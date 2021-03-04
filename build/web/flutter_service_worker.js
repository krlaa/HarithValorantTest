'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "3962bc8ce7632565d96c3a820de8dc80",
"assets/assets/b.png": "5ee06655ec1b390da4063cd1c8082b65",
"assets/assets/br.png": "66ed6aecd58d3860362733cdc6834ece",
"assets/assets/cy.png": "abc605a5291caf0779fd8953aa4c58e2",
"assets/assets/j.png": "0cbba5e0f2aea12625b7574732870a73",
"assets/assets/k.png": "5f1f54ea5338c8eb7b338362664e0522",
"assets/assets/o.png": "83336118c6e1fa376f7010e941420996",
"assets/assets/p.png": "4f51696b349ed615e3841b437add5785",
"assets/assets/r.png": "954dbdeb9bada011702521d548a08b9a",
"assets/assets/ra.png": "4293ce1d2a8d6ffb3587ba4cffb90a89",
"assets/assets/s.png": "30378af6c20365cdaaf5a6cb306430e7",
"assets/assets/sk.png": "d894d34476f2b434580169930fdbd92b",
"assets/assets/so.png": "a1182178ff04b60fa74d62b6b93d21ec",
"assets/assets/weapons/ares.png": "82cd42c081517a257ebe5ca4f6860b67",
"assets/assets/weapons/bucky.png": "2775488545bf18430885975ce84e4be8",
"assets/assets/weapons/bulldog.png": "2e0c1d170bcea0e6069ce3b7e2dab0ec",
"assets/assets/weapons/c.png": "0d3fdeb490bd3db60808197a9dbc65ac",
"assets/assets/weapons/frenzy.png": "0e3521efa59710a57f2a7d77355b4212",
"assets/assets/weapons/ghost.png": "b3ead37486e9227b416c0636af3b5623",
"assets/assets/weapons/guardian.png": "0bf8a4c26a3b985f9840975ac2924d57",
"assets/assets/weapons/judge.png": "9eaa0dba6864d5fc7654887f3436221e",
"assets/assets/weapons/marshal.png": "0c56207d4b3066098859f1b60356d25c",
"assets/assets/weapons/melee.png": "b903bef75e10e00db236d838dd176689",
"assets/assets/weapons/odin.png": "22b020d13180d256600f0ff91ada32c8",
"assets/assets/weapons/operator.png": "d57e56885bfc669ed683eeb0d7092302",
"assets/assets/weapons/phantom.png": "526c26c7956d0cd4468ee62adc30d46d",
"assets/assets/weapons/sheriff.png": "cbe6b617284073d1e72279fc81776244",
"assets/assets/weapons/shorty.png": "f0f2b05d145ea87764d363ee46720c03",
"assets/assets/weapons/spectre.png": "7f26ef819777796682d1d42458a43fd3",
"assets/assets/weapons/stinger.png": "2975d1c6b96a84e2f6918ca092bd346f",
"assets/assets/weapons/vandal.png": "797f78aeddb059b1a9430f9feb7a881c",
"assets/assets/y.png": "3c9f1b767dee34c982871c9f93950345",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "3ec4278f49cb764a8cb0f1e115e3da52",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/packages/youtube_player_flutter/assets/speedometer.webp": "50448630e948b5b3998ae5a5d112622b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "b6fb3c5fb201b3b2e2b827d55d6b1fdf",
"/": "b6fb3c5fb201b3b2e2b827d55d6b1fdf",
"main.dart.js": "758aa0708d2efd485dcfb85cbc376a59",
"manifest.json": "1cf04c77132878b4db256c47dcf222ee",
"version.json": "803843d3e54dfd82b90f3f30640f3ecf"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
