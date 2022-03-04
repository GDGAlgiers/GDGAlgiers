import React from 'react'
import {Link} from 'react-router-dom'

function BlogsContainer({title, blogs, handleDelete}) {
  return (
    <div>
        <h2>{title}</h2>
        {blogs.map((blog) => (
              <div className='blogs-container' key={blog.id}>
                <Link to={`/blogs/${blog.id}`}>
                  <h2>{blog.title}</h2>
                  <p>{blog.author}</p>  
                </Link>
              </div>
        ))}
    </div>
  )
}

export default BlogsContainer