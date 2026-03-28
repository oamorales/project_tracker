# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Crear proyectos de ejemplo
project1 = Project.create!(
  title: "Desarrollo Web E-commerce",
  description: "Plataforma de ventas online para cliente retail",
  deadline: 2.weeks.from_now,
  status: :active
)

project2 = Project.create!(
  title: "App Móvil Delivery",
  description: "Aplicación para servicio de delivery local",
  deadline: 1.month.from_now,
  status: :active
)

# Crear tareas asociadas
project1.tasks.create!([
  { title: "Diseñar base de datos", description: "Modelar tablas principales", status: :done, priority: :high },
  { title: "Configurar autenticación", description: "Implementar Devise", status: :in_progress, priority: :high },
  { title: "Diseño frontend", description: "Maquetar vistas principales", status: :pending, priority: :medium }
])

project2.tasks.create!([
  { title: "Investigación de mercado", description: "Analizar competencia", status: :done, priority: :medium },
  { title: "Prototipo UI", description: "Diseños en Figma", status: :pending, priority: :high }
])

puts "Seeds creados exitosamente!"
puts "- #{Project.count} proyectos"
puts "- #{Task.count} tareas"
