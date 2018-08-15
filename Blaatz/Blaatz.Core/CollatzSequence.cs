using System.Collections.Generic;
using System.Numerics;

namespace Blaatz.Core
{
	public static class CollatzSequence
	{
		public static List<BigInteger> GetSequence(BigInteger number)
		{
			var sequence = new List<BigInteger>() { number };

			while (number > 1)
			{
				number = number % 2 == 0 ?
					number / 2 : ((3 * number) + 1) / 2;
				sequence.Add(number);
			}

			return sequence;
		}
	}
}
