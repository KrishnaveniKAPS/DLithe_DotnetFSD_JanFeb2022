using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Task6
{
	internal class Generics
	{

		public class Program
		{
			public static void Main()
			{
				DataStore<string> strStore = new DataStore<string>();
				strStore.Data = "Hello DLithe";
				//strStorage.Data = 123; // compile-time error
				Console.WriteLine(strStore.Data);

				DataStore<int> intStore = new DataStore<int>();
				intStore.Data = 100;
				//intStorage.Data = "Hello DLithe!"; // compile-time error
				Console.WriteLine(intStore.Data);

				KeyValuePair<int, string> kvp1 = new KeyValuePair<int, string>();
				kvp1.Key = 100;
				kvp1.Value = "Bangalore";
				Console.WriteLine(kvp1.Key + ", " + kvp1.Value);


				KeyValuePair<string, string> kvp2 = new KeyValuePair<string, string>();
				kvp2.Key = "IT";
				kvp2.Value = "Information Technology";
				Console.WriteLine(kvp2.Key + ", " + kvp2.Value);
			}
		}

		class DataStore<T>
		{
			public T Data { get; set; }
		}

		class KeyValuePair<TKey, TValue>
		{
			public TKey Key { get; set; }
			public TValue Value { get; set; }
		}
	}
}

