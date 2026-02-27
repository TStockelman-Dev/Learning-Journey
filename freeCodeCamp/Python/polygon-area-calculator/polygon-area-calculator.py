class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def set_width(self, width):
        self.width = width
    
    def set_height(self, height):
        self.height = height

    def get_area(self):
        return self.width * self.height

    def get_perimeter(self):
        perimeter = (2 * self.width) + (2 * self.height)
        return perimeter
    
    def get_diagonal(self):
        diagonal = (self.width ** 2 + self.height ** 2) ** 0.5
        return diagonal
    
    def get_picture(self):
        if self.width > 50 or self.height > 50:
            return "Too big for picture."
        return ("*" * self.width + "\n") * self.height

    def get_amount_inside(self, shape):
        times = 0
        if (self.width > shape.width) and (self.height > shape.height):
            times = (self.width // shape.width) * (self.height // shape.height)
        else:
            times = 0
        return times

    def __str__(self):
        return f"Rectangle(width={self.width}, height={self.height})"

class Square(Rectangle):
    def __init__(self, side):
        self.width = side
        self.height = side
    
    def __str__(self):
        return f"Square(side={self.width})"
    
    def set_side(self, side):
        self.height = side
        self.width = side

    def set_width(self, side):
        self.width = side
        self.height = side
        return self.width
    
    def set_height(self, side):
        self.height = side
        self. width = side
        return self.height
    