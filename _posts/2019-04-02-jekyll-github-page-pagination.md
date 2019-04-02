---
layout: post
title: "Tweaked Jekyll on Github Page to add pagination"
categories: web development
author: "Laura Rocha Prado"
---

This blog is published on Github Pages using a Jekyll base template called Minima. It offers no built in support for pagination, so I had to do a lot of trial-and-error, and follow a lot of advice from different people on the internet. This was particular tricky, because Minima uses a `home.html` template instead of an `index.html`. 

However, I finally achieved it by using the plugin `jekyll-paginate`, and following most of the steps described [here](https://chrisk91.me/2018/09/09/Pagination-with-Jekyll-and-Foundation.html).

In summary, the steps involve:
1. Invoke and configurate the plugin `jekyll-paginate` on `_config.yml`.
2. Create the file `_includes/paginator.html`, with code that creates the links for adequate navigation.
3. Adjust the `index.html` file with the correct loop for the paginated posts.

Because of the particularity of Minima, I had to further:
1. Rename `index.md` to `index.html`.
2. Correct relative paths for links called in `paginator.html`.
3. Fix styles in `_sass/minima/_layout.scss`.