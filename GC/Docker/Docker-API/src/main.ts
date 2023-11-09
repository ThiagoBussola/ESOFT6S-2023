import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  app.enableShutdownHooks();

  await app.listen(3000);

  // vamos simular que um erro aleatorio aconteceu
  // setTimeout(() => {
  //   process.exit(1);
  // }, Math.random() * 1e4); // 10.000
}

bootstrap();
