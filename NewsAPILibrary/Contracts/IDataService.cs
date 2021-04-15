using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsAPILibrary.Contracts
{
    public interface IDataService<T> where T : class
    {
        
        List<T> Get();
        T GetById(int id);
        
    }
}
