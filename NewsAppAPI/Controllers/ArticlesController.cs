using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Microsoft.AspNetCore.Cors;
using NewsAPILibrary.Model;
using NewsAPILibrary.Servicios;


namespace NewsAppAPI.Controllers
{
    public class ArticlesController : ApiController
    {
        // GET: api/Articles
        [AllowAnonymous]
        //[EnableCors("http://localhost:3000")]
        public List<ArticleModel> Get()
        {
            try
            {
                var articles = GetService.GetArticleService().Get();
                return articles;
            }
            catch (Exception ex)
            {
                var message = ex.ToString();
                return new List<ArticleModel> { };
            }
        }

        [AllowAnonymous]
        //[Route("api/GetArticlesID")]
        public IHttpActionResult Get(int id)
        {
            try
            {
                var article = GetService.GetArticleService().GetAllArticlesById(id);

                if (article == null)
                {
                    article = new ArticleModel();
                }

                return Ok(article);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }

        [HttpGet]
        [AllowAnonymous]
        [Route("api/Articles/GetAllArticlesByCategory")]
        public IHttpActionResult GetAllArticlesByCategory(int categoryId)
        {
            try
            {
                var articlesByCategory = GetService.GetArticleService().GetArticlesByCategory(categoryId).OrderByDescending(x => x.ArticleID).AsQueryable();


                return Ok(articlesByCategory);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }

        [AllowAnonymous]
        [Route("api/Articles/GetArticlesByTitle")]
        public IHttpActionResult GetArticlesByTitle(string title)
        {
            try
            {
                var articlesByTitle = GetService.GetArticleService().GetArticlesByTitle(title).OrderByDescending(x => x.ArticleID).AsQueryable();

                return Ok(articlesByTitle);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }


    }
}
