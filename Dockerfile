FROM ruby@sha256:a36324de633d5405923b087132c7728af0ec5f7c0f4efee72130b32520edcb44

RUN apk add -U --no-cache \
            ruby-ffi=1.15.5-r1 \
    && mv /usr/lib/ruby/gems/3.1.0/extensions/x86_64-linux-musl/3.1.0/ffi-1.15.5 /usr/local/lib/ruby/gems/3.1.0/extensions/x86_64-linux-musl/3.1.0/ \
    && mv /usr/lib/ruby/gems/3.1.0/gems/ffi-1.15.5 /usr/local/lib/ruby/gems/3.1.0/gems/ \
    && mv /usr/lib/ruby/gems/3.1.0/specifications/ffi-1.15.5.gemspec /usr/local/lib/ruby/gems/3.1.0/specifications/
