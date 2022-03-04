import { useState, useEffect } from "react"

const useFetch = (url) => {
    const [data, setData] = useState(null)
    const [isLoading, setIsLoading] = useState(true)
    const [error, setError] = useState(null)

    useEffect(() => {
        setTimeout(() => {
            fetch(url)
        .then(res => {
            if(!res.ok) {
                throw Error("cannot fetch data")
            }
            return res.json()
        })
        .then(data => {
            setIsLoading(false)
            console.log(data)
            setData(data)
        })
        .catch(err => {
            setIsLoading(false)
            setError(err.message)
        })
        }, 1000)
    }, [url])

    return {data, isLoading, error}
}

export default useFetch