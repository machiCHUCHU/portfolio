class Toolings {
  final String image;
  final String name;

  const Toolings({required this.image, required this.name});
}

class ToolsData {
  static const List<Toolings> tools = [
    Toolings(image: "/icons/canva.png", name: "Canva"),
    Toolings(image: "/icons/chatgpt.png", name: "ChatGPT"),
    Toolings(image: "/icons/clickup.png", name: "ClickUp"),
    Toolings(image: "/icons/dart.png", name: "Flutter"),
    Toolings(image: "/icons/drive.png", name: "Drive"),
    Toolings(image: "/icons/excel.png", name: "Excel"),
    Toolings(image: "/icons/gemini.png", name: "Gemini"),
    Toolings(image: "/icons/git.png", name: "Git"),
    Toolings(image: "/icons/github.png", name: "Github"),
    Toolings(image: "/icons/vscode.png", name: "VSCode"),
    Toolings(image: "/icons/word.png", name: "Word"),
  ];
}
