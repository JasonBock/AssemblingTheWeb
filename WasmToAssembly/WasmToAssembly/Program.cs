using System;
using WebAssembly;

namespace WasmToAssembly
{
	class Program
	{
		static void Main(string[] args)
		{
			var module = Compile.FromBinary<dynamic>("collatz.wasm");
			// 5 => 16, 8, 4, 2, 1 == 5
			// 10 => 5, 16, 8, 4, 2, 1 == 6
			// 11 => 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1 == 14
			Console.WriteLine(module().Exports.collatz(11));
		}
	}

	public interface ICollatz
	{
		int collatz(int start);
	}
}
