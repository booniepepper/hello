class Greeting {

    public static void main(String[] argv) {
        final String name;

        if (argv.length > 0) {
            name = argv[0];
        } else {
            name = "world";
        }

        System.out.printf("Hello %s!%n", name);
    }

}

