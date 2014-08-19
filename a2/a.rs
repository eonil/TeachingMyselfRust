

extern
{
	fn	print1();
}


#[no_mangle]
pub fn test1()
{
	let	(tx, rx):(Sender<int>, Receiver<int>) = channel();

	let	a1	=	proc() 
	{
		unsafe { print1() };
		tx.send(111);
	};
	spawn(a1);

	let	r1:int	=	rx.recv();
}
