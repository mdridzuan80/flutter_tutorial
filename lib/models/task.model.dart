List<Task> tasks = [
  Task('1','Task 1', 'Task 1 Description'),
  Task('2','Task 2','Task 2 Description'),
  Task('3','Task 3','Task 3 Description'),
];

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