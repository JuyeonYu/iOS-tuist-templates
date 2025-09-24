
import ProjectDescription

let action: Template.Attribute = .optional("Action")
let name: Template.Attribute = .required("Name")

let template = Template(
  description: "required: name / optional: action",
  attributes: [action, name],
  items: [
    .file(
      path: "Features/\(name)/UI/\(action)\(name)UseCase.swift",
      templatePath: "View.swift.stencil"
    ),
    .file(
      path: "Features/\(name)/UI/\(action)\(name)UseCase.swift",
      templatePath: "ViewController.swift.stencil"
    ),
    .file(
      path: "Features/\(name)/Presentation/\(action)\(name)UseCase.swift",
      templatePath: "Reactor.swift.stencil"
    ),
  ]
)
