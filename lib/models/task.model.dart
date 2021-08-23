class Task
{
  String id;
  String name;
  String description;

  Task(this.id, this.name, this.description);

  getName() {
    return name;
  }

  setName(String name) {
    this.name = name;
  }

  getDescription() {
    return description;
  }

  setDescription(String description) {
    this.description = description;
  }
}