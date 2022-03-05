import React from "react";

function ServiceCard({ service }) {
  return (
    <div className="grid grid-cols-[1fr_9fr] gap-4 rounded-xl bg-white p-4 transition hover:shadow-lg">
      <div
        className={`h-12 w-12 bg-${service.color}-500 bg-opacity-30 text-${service.color}-500 rounded-xl p-2`}
      >
        {service.icon}
      </div>
      <div>
        <h3 className="font-bold text-gray-900">{service.title}</h3>
        <p className="text-sm text-gray-700">{service.description}</p>
      </div>
    </div>
  );
}

export default ServiceCard;
