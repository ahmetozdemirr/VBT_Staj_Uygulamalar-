using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

namespace Bellek_Yonetimi
{
    [Serializable]
    public class Address : IDisposable
    {
        private bool disposedValue;

        public string Street { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        ~Address() => Dispose(false);

        protected virtual void Dispose(bool disposing)
        {
            if (!disposedValue)
            {
                if (disposing)
                {
                    // TODO: yönetilen durumu (yönetilen nesneleri) atın
                }

                // TODO: yönetilmeyen kaynakları (yönetilmeyen nesneleri) serbest bırakın ve sonlandırıcıyı geçersiz kılın
                // TODO: büyük alanları null olarak ayarlayın
                disposedValue = true;
            }
        }

        

        public void Dispose()
        {
            // Bu kodu değiştirmeyin. Temizleme kodunu 'Dispose(bool disposing)' metodunun içine yerleştirin.
            Dispose(disposing: true);
            GC.SuppressFinalize(this);
        }
    }
    [Serializable]  //derleme anında işlemci anlasın diye koyarız serialize olabilir deriz
    public class Customer
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public Address Address { get; set; }
        public Customer ShallowCopy()
        {
            return this.MemberwiseClone() as Customer; //Primite typlerda kopyalama yapmak için kullanırız
        }

        public Customer DeepCopy() //Complex typelardada kopyalama yapabilir
        {
            using (var ms = new MemoryStream()) //using işi bittiği zaman kendi kaldırır
            { //(scopped) 
                var formatter = new BinaryFormatter();
                formatter.Serialize(ms, this);
                ms.Position = 0;
                return (Customer)formatter.Deserialize(ms);
                //aldık atomlarına parçaladık tekrardan bunu alıp belli noktaya getirdik (0) ve Customera çevirdik ve tüm nesneyi yeni bellek adresinde kullandık
            }//çıktığı an işi biter

        }

    }

    internal class Program
    {

        static void Main(string[] args)
        {
            using (var ad = new Address())
            {

            }
            Customer ahmet = new Customer()
            {
                Id = 1,
                FirstName = "Ahmet",
                LastName = "Ozdemir",
                Address = new Address() { City = "Kahramanmaraş", Street = "SenemAyşe", Country = "Turkiye" },
            };
            Customer ali = ahmet.DeepCopy();
            ali.FirstName = "Ali";
            ali.Address.Street = "Kuzey";
            Console.WriteLine(ahmet.Address.Street);
        }
    }
}
