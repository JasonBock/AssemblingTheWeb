using System;
using WebAssembly;

namespace WasmToAssembly
{
	class Program
	{
		static void Main(string[] args)
		{
			var module = Compile.FromBinary<dynamic>("collatz.wasm");
			Console.WriteLine(module().Exports.collatz(5));
		}
	}
}
