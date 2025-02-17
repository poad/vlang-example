module main

import os
import arrays
import strconv

fn is_numeric(s string) bool {
	strconv.atoi(s) or { return false }
	return true
}

fn main() {
	for {
		input := os.input('Enter number: ')
		if is_numeric(input) {
			number := input.int()
			arrays.each(arrays.map_indexed([]int{len: number}, fn (idx int, elem int) string {
				current := idx + 1
				return if current % 3 == 0 {
					'Fizz'
				} else if current % 5 == 0 {
					'Buzz'
				} else {
					'${current}'
				}
			}), println)
			break
		}
	}
}
