package com.ti.controller;

import java.util.Map.Entry;
import java.util.stream.Collectors;

public class StringMaxCount {
	public static void main(String[] args) {
		String str="nagekumar";
		Entry<Character, Long> e = str.chars().mapToObj(c -> (char) c)
				.collect(Collectors.groupingBy(c -> c, Collectors.counting())).entrySet().stream()
				.max(Entry.comparingByValue()).get();
		System.out.println(e);
	}
}
