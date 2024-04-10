import gleam/io
import gleam/list
import gleam/dict
import argv
import envoy

pub fn main() {
  let argv = argv.load()

  //io.debug(args.program)
  //io.debug(args.arguments)

  case argv.arguments {
    ["--help"] | ["-h"] -> io.println("fuuu")
    ["--version"] | ["-V"] -> io.println("v")
    _ -> io.println("kkk")
  }

  pretty_env()
}

fn pretty_env() {
  envoy.all()
  |> dict.to_list
  |> list.map(fn(kv) {
    let #(k, v) = kv

    io.println(k <> "=" <> v)
  })
}
