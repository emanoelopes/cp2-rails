module Observer
	def initialize(nota = Restaurante.nota)
		@nota = nota
		@observers = []
		add_observer(Franquia.new)
	end

	def adiciona_observer(observer)
		@observer << observer
	end

	def notifica(nota)
		@nota += nota
		changed
		notify_observers(self, nota)
	end

end

