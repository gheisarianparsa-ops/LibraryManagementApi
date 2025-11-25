using LibraryManagementApi.Interfaces;
using LibraryManagementApi.Models.BookModels;
using Microsoft.AspNetCore.Mvc;

namespace LibraryManagementApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class BooksController : ControllerBase
    {
        private readonly IGenericRepository<BookModel, BookReadDto, BookUpdateDto, BookCreateDto> _repository;
        public BooksController(IGenericRepository<BookModel, BookReadDto, BookUpdateDto, BookCreateDto> repository)
        {
            _repository = repository;
        }
        [HttpGet]
        public async Task<ActionResult<List<BookReadDto>>> GetAll()
        {
            var authors = await _repository.GetAllAsync();
            return Ok(authors);
        }
        [HttpGet("Id")]
        public async Task<ActionResult<BookReadDto>> GetById(int Id)
        {
            if (!await _repository.IsExist(Id))
                return NotFound();
            var author = await _repository.GetById(Id);
            return Ok(author);
        }
        [HttpPost]
        public async Task<ActionResult<BookReadDto>> Create(BookCreateDto bookCreate)
        {
            if (bookCreate == null)
                return BadRequest();
            return Ok(await _repository.CreateAsync(bookCreate));
        }
        [HttpPut("Id")]
        public async Task<ActionResult<BookReadDto>> Update(int Id, BookUpdateDto bookUpdate)
        {
            if (Id != bookUpdate.Id)
                return BadRequest();
            var UpdatedBook = _repository.UpdateAsync(bookUpdate);
            if (UpdatedBook == null)
                return NotFound();
            return Ok(await UpdatedBook);
        }
        [HttpDelete("Id")]
        public async Task<IActionResult> Delete(int Id)
        {
            if (!await _repository.IsExist(Id))
                return NotFound();
            await _repository.DeleteAsync(Id);
            return NoContent();
        }
    }
}
