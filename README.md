This repo is to clarify [this Rails API issue](https://github.com/rails-api/rails-api/issues/164)

I haven't been able to reproduce exactly the same error, but that might be related. Using the current version of Rails API (0.3.1) with Rails 4.1.6 generates some weirdness. The error is:

`method_missing': undefined method `raise_in_transactional_callbacks='`

You can check the commits to see what generetates the error.
