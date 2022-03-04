import useFetch from '../hooks/useFetch'
import BlogsContainer from './BlogsContainer'

function Homepage() {
    const {data: blogs, isLoading, error} = useFetch('http://localhost:5000/blogs')

  return (
    <div>
        {error && <div>{error}</div>}
        {isLoading && <div>Loading Blogs...</div>}
        {blogs && <BlogsContainer blogs={blogs} title="All blogs" />}
    </div>
  )
}

export default Homepage