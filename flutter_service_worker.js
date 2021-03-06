'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "426313f2f3133c2f20415344c4a22df3",
"index.html": "ec4a0233ad42bbed1997d06f58ed8d02",
"/": "ec4a0233ad42bbed1997d06f58ed8d02",
"main.dart.js": "b4e0121e0a65202dc891906b1cdf8ea8",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "a83bbbd9d23ea4d752fbcd44cdc544fa",
"assets/AssetManifest.json": "a8e22f02fee6178a07c3698064c03c61",
"assets/NOTICES": "ee002ab081c0a1b3d66f21c8161a86a9",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/assets/green_screen_studio/illustration_2.png": "dc038c521f28f62a37ff11f6aad4289d",
"assets/assets/green_screen_studio/illustration_1.png": "87d8eacba8f36d4c7513fa2dcbae1daa",
"assets/assets/h.png": "de45b176ccec20922083dc8c7b9b88e0",
"assets/assets/app_play_store.png": "e3e1fe9bf0c1d73af6ae6cc614549f77",
"assets/assets/m.png": "7a9aa011f41f74a9a7b024047f237ec3",
"assets/assets/russeknutene/illustration_2.png": "e219950f6f32064d4d9b8d155cc7b542",
"assets/assets/russeknutene/illustration_1.png": "775000a275cf0f589b4cd5c3c6326041",
"assets/assets/dot.png": "f882458ac5c5b77cdb9895fc6e300555",
"assets/assets/time_to_death.png": "67ff2233072a2978b6b0a59391af9556",
"assets/assets/rated.png": "ec349187d805322839069399aa86053d",
"assets/assets/i_am/illustration_2.png": "682027a06877a23d21a0db8c5d973266",
"assets/assets/i_am/illustration_1.png": "44df6ad8a8b2e504224e28718df0087f",
"assets/assets/green_screen_studio.png": "3d5ae2aa6f1e2ddf411a4cf975d07500",
"assets/assets/live_stream_simulator.png": "e26b126f3e3b109c7119391e80954a59",
"assets/assets/contact.png": "0a77269f096ad1a2693e41f31342ce43",
"assets/assets/rated/illustration_2.png": "9cb8339334883a81e51d2cacebd5c9cd",
"assets/assets/rated/illustration_1.png": "bec90aa15fcc63b5d8f8c607d2aa72de",
"assets/assets/slurk.png": "49b711d615ce593a2b74bb640b2550dc",
"assets/assets/big_sur.jpeg": "b90713345937f3673746231a706bd3ce",
"assets/assets/done.png": "0b79247211a98e8359388cc2e4f0256e",
"assets/assets/russeknutene.png": "8b2172b3e5b0fd221b78db311e32a620",
"assets/assets/logo.png": "4ce91936f6e5df300ae52ee39dd80e70",
"assets/assets/i_am.png": "1224a89ffa1329a72b0addf53d8a7f7d",
"assets/assets/time_to_death/illustration_2.png": "08c888b4cc5224709d84920a05cd106d",
"assets/assets/time_to_death/illustration_3.png": "d925e763e77a3bf4e6ce347bce257f71",
"assets/assets/time_to_death/illustration_1.png": "ff94c31207b8fc33f4cb72e43c9d626e",
"assets/assets/time_to_death/illustration_4.png": "4b09aa7c762421ef574a7b218ffd873a",
"assets/assets/a.png": "034ee85cf3a919dc7164eca579d5bb99",
"assets/assets/live_stream_simulator/illustration_2.png": "c6ed00ff82233867208a23f9f9b1c6ec",
"assets/assets/live_stream_simulator/illustration_1.png": "e94a7d4278cf5d11ef9d6b01f0cc0144"
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
