```tsx
// Exemple : Card design Nstup Taste (style éditorial)

interface CardProps {
  category: string
  title: string
  excerpt: string
  date: string
  readTime: string
  imageSrc: string
  href: string
}

export function Card({ category, title, excerpt, date, readTime, imageSrc, href }: CardProps) {
  return (
    <article className="group border-b border-[#e5e3de] pb-xl">
      <a href={href} className="block">
        <div className="mb-md aspect-[4/3] overflow-hidden bg-[#efede8]">
          <img
            src={imageSrc}
            alt=""
            className="h-full w-full object-cover transition-transform duration-700 group-hover:scale-[1.02]"
          />
        </div>
        <div className="text-xs uppercase tracking-widest text-[#8a8a8a]">{category}</div>
        <h3 className="mt-sm text-xl font-medium leading-snug transition-colors group-hover:text-[#8b7355]">
          {title}
        </h3>
        <p className="mt-md text-sm leading-relaxed text-[#8a8a8a]">{excerpt}</p>
        <div className="mt-md flex items-center gap-sm text-xs text-[#8a8a8a]">
          <time>{date}</time>
          <span aria-hidden="true">·</span>
          <span>{readTime}</span>
        </div>
      </a>
    </article>
  )
}
