workflow "New workflow" {
  on = "push"
  resolves = ["Hello Mona's World"]
}

action "Hello Mona's World" {
  uses = "./"
  env = {
    MY_NAME = "Hi, I'm Mona!"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}

workflow "New workflow 1" {
  on = "push"
}
