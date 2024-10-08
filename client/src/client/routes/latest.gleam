import client/components/entry.{entry_view}
import client/state.{type Model}
import gleam/list
import lustre/attribute.{class}
import lustre/element/html.{ol, section}

pub fn latest_view(model: Model) {
  section([attribute.id("latest")], [
    ol(
      [class("flex flex-col gap-2")],
      model.posts
        |> list.map(fn(post) { entry_view(post) }),
    ),
  ])
}
