using NewsAPILibrary.Contracts;
using NewsAPILibrary.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsAPILibrary.Servicios
{
    public class ArticleService : IDataService<ArticleModel>
    {

        public List<ArticleModel> Get()
        {
            try
            {
                var parameters = new
                {

                };

                var articles = GetService.GetDataAccessService().LoadData<ArticleModel, dynamic>("GetAllArticles", parameters, "DataConnection");

                foreach (var article in articles)
                {
                    var categories = GetService.GetCategoryService().GetArticleCategoriesbyArticleId(article.ArticleID);
                    article.Categories = categories;
                }

                return articles;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public ArticleModel GetById(int id)
        {
            throw new NotImplementedException();
        }

        public ArticleModel GetAllArticlesById(int id)
        {
            try
            {
                var parameters = new
                {
                    ArticleID = id
                };

                var article = GetService.GetDataAccessService().LoadData<ArticleModel, dynamic>("GetAllArticlesById", parameters, "DataConnection").FirstOrDefault();

                var categories = GetService.GetCategoryService().GetArticleCategoriesbyArticleId(id);
                article.Categories = categories;


                return article;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


        public List<ArticleModel> GetArticlesByCategory(int categoryId)
        {
            var parameters = new
            {
                CategoryId = categoryId
            };

            var articles = GetService.GetDataAccessService().LoadData<ArticleModel, dynamic>("GetArticlesByCategory", parameters, "DataConnection");

            foreach (var article in articles)
            {
                var categories = GetService.GetCategoryService().GetArticleCategoriesbyArticleId(article.ArticleID);
                article.Categories = categories;
            }

            return articles;
        }

        public List<ArticleModel> GetArticlesByTitle(string title)
        {
            var parameters = new
            {
                Title = title
            };
            var articles = GetService.GetDataAccessService().LoadData<ArticleModel, dynamic>("GetArticlesByTitle", parameters, "DataConnection");

            foreach (var article in articles)
            {
                var categories = GetService.GetCategoryService().GetArticleCategoriesbyArticleId(article.ArticleID);
                article.Categories = categories;
            }

            return articles;
        }
    }

    
}
