

extern crate native;




#[no_mangle]
pub extern fn submain(argc: int, argv: *const *const u8, deepermain: extern fn())
{
	println!("submain hello");
	native::start(argc, argv, proc() deepermain());
}


#[no_mangle]
pub extern fn test22()
{
	let	a1	=	proc()
	{
		println!("test22 proc Hello!");
	};
	spawn(a1);
}