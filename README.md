# (Proof-of-Concept) for 'mentor-finder'

## Application Overview
In conversation with a couple acquaintances, the topic of how to create a lightweight search-by-user-profile feature came up. Partially to show a local NGO how you _could_ implement such an application... partially because, hey, interesting question.

More specifically, we were discussing how, as quickly and with as little code as possible, to create the ability for logged-in users to find other users at a level of precision...
1. more granular than "half-a-dozen conditionally-chained ActiveRecord `scope` class-methods," but 
2. less granular than "create your own Elasticsearch-dependent filter-parameters pane."

I had a couple hours the weekend following, and I love ~~lazily suborning other people's code to my own ends~~ exploring the bounty of the RubyGems ecosystem -- so I wrote up a quick exploration of the problem in this repo.

(_Far, far more details than you ever wanted re: my architectural hand-wringing and takeaways [over here!](https://www.suss.world/posts/mentor-finder-revisitation/)_)

## Getting Started

Again, it's just the implementation of a thought experiment: no envvars or the like here. Fork, clone, or download the project, then you're off:

```
$ bundle
$ yarn install
$ rake db:create
$ rake db:migrate
$ rails s
```

## Built With

* Rails (6.0.0.rc1)
* Devise (4.6.2)
* Ransack (2.1.1)

Note that, while, yeah, running on Rails 6? It doesn't actually make use of any of the cool Webpacker pipeline or Trix features _...yet._
