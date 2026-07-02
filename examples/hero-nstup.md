```tsx
// Exemple : Hero section Nstup Taste
// DESIGN_VARIANCE: 6 | MOUVEMENT: 5 | DENSITÉ: 3

import { motion } from 'motion/react'

interface HeroProps {
  title: string
  subtitle: string
  ctaLabel: string
  ctaHref: string
  imageSrc: string
}

export function Hero({ title, subtitle, ctaLabel, ctaHref, imageSrc }: HeroProps) {
  return (
    <section className="relative grid min-h-[100dvh] overflow-hidden lg:grid-cols-2">
      <div className="flex flex-col justify-center px-[8%] py-4xl">
        <motion.h1
          initial={{ opacity: 0, y: 40 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ type: 'spring', stiffness: 80, damping: 20 }}
          className="text-4xl font-medium leading-tight lg:text-5xl"
        >
          {title}
        </motion.h1>
        <motion.p
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ type: 'spring', stiffness: 80, damping: 20, delay: 0.2 }}
          className="mt-xl max-w-[55ch] text-lg text-[#7a7670]"
        >
          {subtitle}
        </motion.p>
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ type: 'spring', stiffness: 80, damping: 20, delay: 0.4 }}
          className="mt-2xl"
        >
          <a
            href={ctaHref}
            className="inline-flex items-center gap-sm border border-current px-xl py-md text-sm uppercase tracking-widest transition-all duration-300 hover:bg-[#1a1a1a] hover:text-[#f8f7f4]"
          >
            {ctaLabel}
            <span aria-hidden="true">→</span>
          </a>
        </motion.div>
      </div>

      <div className="relative overflow-hidden">
        <motion.div
          initial={{ scale: 1.1, opacity: 0 }}
          animate={{ scale: 1, opacity: 1 }}
          transition={{ duration: 1.2, ease: [0.25, 0.1, 0.25, 1] }}
          className="h-full w-full"
        >
          <img
            src={imageSrc}
            alt=""
            className="h-full w-full object-cover"
            loading="eager"
          />
        </motion.div>
      </div>
    </section>
  )
}
