import React from 'react'
import { useNavigate, useParams } from 'react-router-dom'
import useFetch from '../hooks/useFetch'

function BlogDetails() {
    const {id} = useParams()
    const {data: blog, isLoading, error} = useFetch(`http://localhost:5000/blogs/${id}`)
    const navigate = useNavigate()

    const handleDelete = () => {
      fetch(`http://localhost:5000/blogs/${id}`, {
        method: 'DELETE'
      }).then(() => {
        console.log("blog deleted")
        navigate("/")
      })
    }
  return (
    <div className='blog-details'>
        {error && <div>{error}</div>}
        {isLoading && <div>Loading Blog...</div>}
        {blog && (
            <article>
                <h2>{blog.title}</h2>
                <p>{blog.author}</p>
                <div>{blog.body}</div>
                <button onClick={handleDelete}>Delete</button>
            </article>
        )}
    </div>
  )
}

export default BlogDetails