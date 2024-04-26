workflow HelloWorld {
    call WriteGreeting
    }

task WriteGreeting {
    command {
        echo "Hello World"
    }
    output {
        File outfile = stdout()
    }
}
