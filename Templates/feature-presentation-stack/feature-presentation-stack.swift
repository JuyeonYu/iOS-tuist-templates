
import ProjectDescription

let action: Template.Attribute = .optional("Action", default: .string(""))
let name: Template.Attribute = .required("Name")

let template = Template(
  description: "required: name / optional: action",
  attributes: [action, name],
  items: [
    .file(
      path: "Features/\(name)/UI/\(action)\(name)View.swift",
      templatePath: "View.swift.stencil"
    ),
    .file(
      path: "Features/\(name)/UI/\(action)\(name)ViewController.swift",
      templatePath: "ViewController.swift.stencil"
    ),
    .file(
      path: "Features/\(name)/Presentation/\(action)\(name)Reactor.swift",
      templatePath: "Reactor.swift.stencil"
    ),
  ]
)
