using NewsAPILibrary.Contracts;
using NewsAPILibrary.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsAPILibrary.Servicios
{
    public class CategoryService : IDataService<CategoryModel>
    {
        public List<CategoryModel> Get()
        {
            var parameters = new
            {

            };
            var categories = GetService.GetDataAccessService().LoadData<CategoryModel, dynamic>("GetAllCategories", parameters, "DataConnection");

            return categories;
        }

        public CategoryModel GetPublishedArticlesById(int id)
        {
            var parameters = new
            {
                CategoryID = id
            };
            var category = GetService.GetDataAccessService().LoadData<CategoryModel, dynamic>("GetCategoriesById", parameters, "DataConnection");
            return category.FirstOrDefault();
        }

        public List<CategoryModel> GetArticleCategoriesbyArticleId(int id)
        {
            try
            {
                var parameters = new
                {
                    ArticleID = id
                };

                var categories = GetService.GetDataAccessService().LoadData<CategoryModel, dynamic>("GetArticleCategoriesById", parameters, "DataConnection");

                return categories;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public CategoryModel GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
