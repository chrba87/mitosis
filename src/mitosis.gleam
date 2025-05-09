import p5js_gleam.{type P5}
import p5js_gleam/bindings as p5

type State {
  State(x: Float, y: Float)
}

fn setup(p: P5) -> State {
  p5.create_canvas(p, 800.0, 800.0)
  State(20.0, 20.0)
}

fn draw(p: P5, state: State) {
  p5.background(p, "#101010")
}

pub fn main() -> Nil {
  p5js_gleam.create_sketch(init: setup, draw: draw)
  |> p5.start_sketch
}
