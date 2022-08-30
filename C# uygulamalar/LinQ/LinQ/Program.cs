
#region
using LinQ;

var sayilar = new int[] { 1, 2, 3, 5, 11, 12, 13, 14, 15, 17, 18, 19 };
/*IEnumerable<int> sonuc = from x in sayilar where x < 13 select x;
//var sonuc = sayilar.Where(x => x < 13); LinQ sorguları aynıdır
foreach(var say in sonuc)
{
    Console.WriteLine(say);
}*/

var personeller = new List<Personel> {
 new Personel() { Id = 1, Name = "TestAdi1", LastName = "TestSoyadi1",ProjeId = 1 },
 new Personel() { Id = 3, Name = "TestAdi3", LastName = "TestSoyadi3",ProjeId = 2 },
new Personel() { Id = 2, Name = "TestAdi2", LastName = "TestSoyadi2",ProjeId = 3 },
new Personel() { Id = 1, Name = "TestAdi4", LastName = "TestSoyadi4" ,ProjeId = 1},
new Personel() { Id = 5, Name = "TestAdi5", LastName = "TestSoyadi5" ,ProjeId = 5},
new Personel() { Id = 1, Name = "TestAdi6", LastName = "TestSoyadi6", ProjeId = 1},

};
var projeler = new List<Proje> {
 new Proje() { ProjeId = 1, ProjeName = "ProjeAdi1", },
 new Proje() { ProjeId = 2, ProjeName = "ProjeAdi2" ,},
new Proje() { ProjeId = 3, ProjeName = "ProjeAdi3",},
new Proje() { ProjeId = 4, ProjeName = "ProjeAdi4",},
new Proje() { ProjeId = 5, ProjeName = "ProjeAdi5" },
new Proje() { ProjeId = 6, ProjeName = "ProjeAdi6",},

};

/*
var name=from x in personeller select x.Name;
var lastName=personeller.Select(x => x.LastName);
var ilk = from x in personeller where x.Id == 1 select x.Name+ " "+x.LastName;
var ikinci = personeller.Where(x => x.Id == 1).Select(x=>x.Name );
*/


//var sonuc=personeller.OrderBy(x => x, new ComparePersonel()).Select(x=>x.Name);

/*
foreach (var x in sonuc)
{
    Console.WriteLine(x);
}*/


/*
var sonuc = from x in personeller group x by x.Name;
foreach (var x in sonuc)
{
    Console.WriteLine(x.Key);
    foreach(var y in x)
    {
        Console.WriteLine(y.Id+" "+y.Name+" "+y.LastName);
    }
}
*/

//var sonuc = from x in personeller group x by x.Name into nameGroup select nameGroup.Key;

//var sonuc = personeller.GroupBy(x => x.Id==1);
/*
var sonuc = personeller.GroupBy(x => x,new CompareEqualityPersonel());
foreach (var x in sonuc)
{
    Console.WriteLine(x.Key.Name);
    foreach(var y in x)
    {
        Console.WriteLine(y.Name+' '+y.LastName);
    }
}*/
/*
var sonuc1 = from x in personeller
            join y in projeler on x.ProjeId equals y.ProjeId
            select new { Adı = x.Name + " " + x.LastName, ProjeAdı = y.ProjeName };

var sonuc2=personeller.Join(projeler,x=>x.ProjeId,y=>y.ProjeId,(x,y)=> new { Adı = x.Name + " " + x.LastName, ProjeAdı = y.ProjeName });

var sonuc3 = from x in personeller
             from y in projeler
             where x.ProjeId == y.ProjeId
             select new { Adı = x.Name + " " + x.LastName, ProjeAdı = y.ProjeName };

var sonuc4 = personeller.SelectMany(x=>projeler.Where(y=>y.ProjeId==x.ProjeId),(x,y) => new { Adı = x.Name + " " + x.LastName, ProjeAdı = y.ProjeName });

*/

var sonuc = sayilar.Where(x => x < 13).ToList();
for(int i = 0; i < sayilar.Length; i++)
{
    sayilar[i] = sayilar[i] - 13;
}
foreach (var x in sonuc)
{
    Console.WriteLine(x);
}

#endregion
