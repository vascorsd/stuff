# stuff

Trying to get some UIs going.

Connecting gleam + deno + slint.

Seems to be able to open a simple window.

## Try

```sh
gleam run --target js             # simple cli
gleam run --target js -m window1  # open Slint window with About widget
gleam run --target js -m window2  # open Slint window with Demo button + count
```

## Many questions

* when using `@external(javascript...)` does the file pointed to has to have any restrictions?

  can I use a .ts file? does it change anything? is there any problem?

* how do we deal with the `async` that the ffi is forcing us into. Following the 
  examples from slint site they use `async` on the functions and I'm not sure about
  the implications

* would be nice to have a way to say that we only target js so we don't have to
  provide and empty implementation for the functions with a `todo`.

* how to export / distribute the bundle to be executed like a normal application by
  end users? 

  for erlang doing the `gleam export erlang-shipment` kinda works and the other option
  from the docs using `gleescript` also works, but I don't see or understand how to
  do it for the javascript target.

* I don't think I understand what the `typescript_declarations` is useful for and if 
  it's needed or not? I think it's for when exporting a lib to be used by another
  project, but I'm not sure since there are no real examples and I'm not deep into the
  js/ts/node/deno world to know about these things.