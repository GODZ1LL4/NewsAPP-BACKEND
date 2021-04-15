using NewsAPILibrary.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsAPILibrary.Servicios
{
    public static class GetService
    {
        public static BDAccess GetDataAccessService()
        {
            return new BDAccess();
        }
        public static ArticleService GetArticleService()
        {
            return new ArticleService();
        }
        
        
        
        public static CategoryService GetCategoryService()
        {
            return new CategoryService();
        }
        
    }
}
