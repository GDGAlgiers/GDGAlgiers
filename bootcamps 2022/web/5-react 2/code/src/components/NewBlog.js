import React, { useState } from 'react'
import { useNavigate } from 'react-router-dom'

function NewBlog() {

  const [title, setTitle] = useState('')
  const [author, setAuthor] = useState('')
  const [body, setBody] = useState('')
  const [isPending, setIsPending] = useState(false)
  const navigate = useNavigate()

  const handleSubmit = (e) => {
    e.preventDefault()
    const blog = {title, author, body}
    setIsPending(true)

    fetch('http://localhost:5000/blogs', {
      method: 'POST',
      headers: {"Content-Type": "application/json"},
      body: JSON.stringify(blog)
    }).then(() => {
      console.log('new blog added')
      setIsPending(false)
      navigate("/")
    })
  }
  return (
    <div className='new-blog'>
        <h2>Add a New Blog</h2>
        <form onSubmit={handleSubmit}>
          <label>Blog title</label>
          <input type="text" required value={title} onChange={(e) => setTitle(e.target.value)} />
          <label>Blog author</label>
          <input type="text" required value={author} onChange={(e) => setAuthor(e.target.value)} />
          <label>Blog body</label>
          <textarea required value={body} onChange={(e) => setBody(e.target.value)}></textarea>
          {!isPending && <button>Add Blog</button>}
          {isPending && <button disabled>Adding Blog...</button>}
        </form>
    </div>
  )
}

export default NewBlog