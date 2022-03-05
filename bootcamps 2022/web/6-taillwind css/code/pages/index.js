import Head from "next/head";
import Image from "next/image";
import ServiceCard from "../components/ServiceCard";
export default function Home() {
  const services = [
    {
      title: "Web Development",
      description:
        "We build websites and web applications that are fast, secure, and easy to use.",
      color: "blue",
      icon: (
        <svg
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 0 24 24"
          className="h-full w-full"
        >
          <path fill="none" d="M0 0h24v24H0z" />
          <path
            d="M24 12l-5.657 5.657-1.414-1.414L21.172 12l-4.243-4.243 1.414-1.414L24 12zM2.828 12l4.243 4.243-1.414 1.414L0 12l5.657-5.657L7.07 7.757 2.828 12z"
            fill="currentColor"
          />
        </svg>
      ),
    },
    {
      title: "Mobile Development",
      description:
        "We build mobile apps that are fast, secure, and easy to use.",
      color: "green",
      icon: (
        <svg
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 0 24 24"
          className="h-full w-full"
        >
          <path fill="none" d="M0 0h24v24H0z" />
          <path
            d="M7 4v16h10V4H7zM6 2h12a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1zm6 15a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"
            fill="currentColor"
          />
        </svg>
      ),
    },
    {
      title: "Web Design",
      description: "We design beautiful websites and web applications.",
      color: "purple",
      icon: (
        <svg
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 0 24 24"
          className="h-full w-full"
        >
          <path fill="none" d="M0 0h24v24H0z" />
          <path
            d="M7.05 14.121L4.93 16.243l2.828 2.828L19.071 7.757 16.243 4.93 14.12 7.05l1.415 1.414L14.12 9.88l-1.414-1.415-1.414 1.415 1.414 1.414-1.414 1.414-1.414-1.414-1.415 1.414 1.415 1.414-1.415 1.415L7.05 14.12zm9.9-11.313l4.242 4.242a1 1 0 0 1 0 1.414L8.464 21.192a1 1 0 0 1-1.414 0L2.808 16.95a1 1 0 0 1 0-1.414L15.536 2.808a1 1 0 0 1 1.414 0zM14.12 18.363l1.415-1.414 2.242 2.243h1.414v-1.414l-2.242-2.243 1.414-1.414L21 16.757V21h-4.242l-2.637-2.637zM5.636 9.878L2.807 7.05a1 1 0 0 1 0-1.415l2.829-2.828a1 1 0 0 1 1.414 0L9.88 5.635 8.464 7.05 6.343 4.928 4.929 6.343l2.121 2.12-1.414 1.415z"
            fill="currentColor"
          />
        </svg>
      ),
    },
    {
      title: "Product Design",
      description: "We design beautiful products.",
      color: "red",
      icon: (
        <svg
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 0 24 24"
          className="h-full w-full"
        >
          <path fill="none" d="M0 0h24v24H0z" />
          <path
            d="M19 8h2a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1h-8a1 1 0 0 1-1-1v-1H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v5zm-2 0V4H5v14h7V9a1 1 0 0 1 1-1h4zm-3 2v10h6V10h-6z"
            fill="currentColor"
          />
        </svg>
      ),
    },
  ];

  return (
    <div>
      <Head>
        <title>Create Next App</title>
        <meta name="description" content="Generated by create next app" />
        <link rel="icon" href="/favicon.ico" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin />
        <link
          href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;700&display=swap"
          rel="stylesheet"
        />
      </Head>
      <main className="flex flex-col gap-4 p-4 md:px-16">
        <section className="flex flex-col items-center gap-4 md:h-[60vh] md:flex-row-reverse">
          <div className="flex h-full w-full justify-center p-10">
            <div className="relative  box-border h-[70vw] w-[70vw] overflow-hidden rounded-full md:h-96 md:w-96">
              <Image
                src={"https://source.unsplash.com/random"}
                alt="cover photo"
                layout="fill"
                objectFit="cover"
              ></Image>
            </div>
          </div>
          <div className="flex flex-col gap-4">
            <p className="text-sm text-gray-700">
              Hey, I&apos;m Hadji Abdelhadi
            </p>
            <h1 className="text-3xl font-bold text-gray-900">
              I enjoy developing tech websites and digital products
            </h1>
            <button className="max-w-fit rounded-full bg-gray-900 py-4 px-8 text-sm text-white transition hover:bg-red-500">
              Get in touch
            </button>
          </div>
        </section>
        <section className="flex flex-col items-center gap-4">
          <h2 className="text-2xl font-bold text-gray-900">My services</h2>
          <p className="max-w-xl text-sm text-gray-700">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
            ad minim veniam
          </p>
          <div className="before:content-[' '] relative grid max-w-4xl grid-cols-1 gap-4 py-4 before:absolute before:-z-10 before:ml-[10%] before:h-full before:w-[80%] before:rounded-xl before:bg-blue-500 before:bg-opacity-20 md:grid-cols-2">
            {services.map((service, index) => (
              <ServiceCard key={`card${index}`} service={service}></ServiceCard>
            ))}
          </div>
        </section>
        <div className="hidden bg-red-500 bg-green-500 bg-purple-500 bg-blue-500 text-purple-500 text-red-500 text-green-500 text-blue-500"></div>
      </main>
    </div>
  );
}
