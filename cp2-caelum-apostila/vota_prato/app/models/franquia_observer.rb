module Observer
	def initialize
		@observers = []
	end

	def adiciona_observer(observer)
		@observer << observer
	end

	def notifica
		#percorrer os observers e chamar o método alerta
	end
end