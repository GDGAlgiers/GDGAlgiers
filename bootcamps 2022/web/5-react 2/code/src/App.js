import Navbar from "./components/Navbar";
import Homepage from "./components/Homepage";
import AboutPage from "./components/AboutPage";
import NewBlog from "./components/NewBlog";
import {BrowserRouter, Routes, Route} from 'react-router-dom'
import NotFound from "./components/NotFound";
import BlogDetails from "./components/BlogDetails";

function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <Navbar />
        <div className="content">
          <Routes>
            <Route path="/" element={<Homepage />} />
            <Route path="/about" element={<AboutPage />} />
            <Route path="/new" element={<NewBlog />} />
            <Route path="/blogs/:id" element={<BlogDetails />} />
            <Route path="*" element={<NotFound />} />
          </Routes>
        </div>
      </div>
    </BrowserRouter>
  );
}

export default App;
