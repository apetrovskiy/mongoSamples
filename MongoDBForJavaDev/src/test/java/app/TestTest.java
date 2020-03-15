package app;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class TestTest {
    private static final String TEST01 = "test01";

    @BeforeEach
    void setUp() {
        System.out.println("setUp");
    }

    @Test
    void probe() {
        System.out.println(TEST01);
        assertAll(() -> assertEquals(1, 1, "numbers"), () -> assertTrue(true, "a"), () -> assertFalse(false),
                () -> assertArrayEquals(Stream.of(1).collect(Collectors.toList()).toArray(new Integer[] {}),
                        Stream.of(1).collect(Collectors.toList()).toArray(new Integer[] {})));
    }
}