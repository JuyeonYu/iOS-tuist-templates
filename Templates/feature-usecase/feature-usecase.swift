
import ProjectDescription

let action: Template.Attribute = .required("Action") // e.g. Load, ToggleLike
let name: Template.Attribute = .required("Name")     // e.g. Post

let template = Template(
  description: "required: action, name",
  attributes: [action, name],
  items: [
    .file(
      path: "Features/\(name)/Domain/\(action)\(name)UseCase.swift",
      templatePath: "UseCase.swift.stencil"
    ),
  ]
)
