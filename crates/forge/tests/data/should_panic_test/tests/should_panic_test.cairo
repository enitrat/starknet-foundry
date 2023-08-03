 use array::ArrayTrait;

#[test]
#[should_panic]
fn should_panic_no_data() {
	panic_with_felt252(0);
}

#[test]
#[should_panic(expected: ('panic message', ))]
fn should_panic_check_data() {
	panic_with_felt252('panic message');
}

#[test]
#[should_panic(expected: ('panic message', 'second message',))]
fn should_panic_multiple_messages(){
	let mut arr = ArrayTrait::new();
	arr.append('panic message');
	arr.append('second message');
	panic(arr);
}

#[test]
#[should_panic(expected: (0,))]
fn should_panic_actual_doesnt_match() {
	panic_with_felt252(1);
}

#[test]
fn didnt_expect_panic() {
	panic_with_felt252(1);
}

#[test]
#[should_panic(expected: (0,))]
fn expected_panic_but_didnt() {
	panic_with_felt252(0);
}
