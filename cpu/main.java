package cpu;

class Main {
    public static void main(String[] args) {
        double result = 0;
        for (int i = 1; i < 1000000000; ++i) {
            result += 1.0 / i;
        }
    }
}