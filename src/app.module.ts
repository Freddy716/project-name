import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { EstadosModule } from './feature/estados/estados.module';
import { UsuariosModule } from './feature/usuarios/usuarios.module';

@Module({
  imports: [EstadosModule, UsuariosModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
