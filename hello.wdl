version 1.0

task hello {
  input {
    String name
  }

  command {
    echo 'hello ${name}!'
  }

  output {
    File response = stdout()
  }

  runtime {
   docker: 'ubuntu:22.04'
  }

  parameter_meta {
    name: {
      help: "String to echo for task"
    }
  }
}

workflow example {
  call hello
}
