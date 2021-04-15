using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsAPILibrary.Model
{
    public class ArticleModel
    {
        public int ArticleID { get; set; }
        public string Title { get; set; }
        public string Descripcion { get; set; }
        public string Content { get; set; }
        public string Author { get; set; }
        public string UrlImage { get; set; }
        public List<CategoryModel> Categories { get; set; }
    }
}
