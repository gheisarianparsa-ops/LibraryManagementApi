using LibraryManagementApi.Data;
using LibraryManagementApi.Interfaces;
using LibraryManagementApi.Models.AuthorModels;
using LibraryManagementApi.Models.BookModels;
using LibraryManagementApi.Repository;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddDbContext<LibraryManagementDbContext>(q => q.UseSqlServer(builder.Configuration.GetConnectionString("LibraryManagementConnection")));
builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
builder.Services.AddScoped<
    IGenericRepository<AuthorModel, AuthorReadDto, AuthorUpdateDto, AuthorCreateDto>,
    AuthorRepository
>();
builder.Services.AddScoped<
    IGenericRepository<BookModel, BookReadDto, BookUpdateDto, BookCreateDto>,
    BookRepository
>();
builder.Services.AddControllers();

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
