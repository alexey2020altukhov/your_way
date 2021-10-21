package com.random;

import java.util.Arrays;

/**
 * Класс, использующийся для генерации случайных чисел
 * @author Altukhov Alexey
 * @version 1.0
 */
public class Random {

    /**
     * Метод, использующихся для генерации чисел в заданном диапозоне (включая max)
     * @param min минимальное возможное значение
     * @param max максимальное возможное значение
     * @return возвращает число, сгенерированное в заданном диапозоне
     */
    public static int getRandomNumberInRange(int min, int max)
    {
        max -= min;
        return (int) (Math.random() * ++max) + min;
    }

    /**
     * Метод для получения числа с необходимой вероятностью из массива
     * @param numbers массив чисел
     * @param probabilities массив вероятностей
     * @return возвращает число из массива numbers
     * @throws ExceptionRandom исключение, возникающее в случае, когда входные данные некорректны
     */
    public static int getRandomFromArrayWithProbability(int [] numbers, double [] probabilities) throws ExceptionRandom {
        if (numbers.length!=probabilities.length)
            throw new ExceptionRandom("Размеры массивов не совпадают!");
        if (numbers.length<1)
            throw new ExceptionRandom("Каждый из массивов значений должен содержать как минимум 1 элемент!");
        if (Arrays.stream(probabilities).sum()!=1)
            throw new ExceptionRandom("Сумма вероятностей должна быть равна единице!");
        double rnd = Math.random();
        double chance = 0;
        for (int i = 1; i<numbers.length; i++) {
            chance+=probabilities[i];
            if(rnd <= chance){
                return numbers[i];
            }
        }
        return numbers[0];
    }
}
