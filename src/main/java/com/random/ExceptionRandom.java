package com.random;

/**
 * Класс исключений, связанных с классом Random
 * @author Altukhov Alexey
 * @version 1.0
 */
public class ExceptionRandom extends Exception{

    /**
     * Конструктор класса
     * @param message сообщение об ошибке
     */
    public ExceptionRandom(String message) {
        super(message);
    }
}
