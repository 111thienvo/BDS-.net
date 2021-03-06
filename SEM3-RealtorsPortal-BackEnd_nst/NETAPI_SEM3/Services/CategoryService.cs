using NETAPI_SEM3.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NETAPI_SEM3.Services
{
    public interface CategoryService
    {
        public IEnumerable<Category> GetAllCategory();

        public int createCategory(Category category);

        public bool updateCategory(Category category);
        public bool deleteCategory(int categoryId);
        public Category findCategory(int categoryId);
    }
}
